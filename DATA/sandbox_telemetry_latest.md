# sandbox_telemetry_parse — 2026-11-25 00:13:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2511433 lines=5565
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5550 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5550} |
| `chromeGpuPssKb` | {'int': 5550} |
| `chromeOtherPssKb` | {'int': 5550} |
| `chromeProcesses` | {'int': 5550} |
| `chromeProfiles` | {'int': 5550} |
| `chromeRendererMaxPssKb` | {'int': 5550} |
| `chromeRendererPssKb` | {'int': 5550} |
| `chromeRenderers` | {'int': 5550} |
| `chromeTabs` | {'int': 5550} |
| `chromeTabsProbedProfiles` | {'int': 5550} |
| `chromeUtilityPssKb` | {'int': 5550} |
| `desktopPssKb` | {'int': 5550} |
| `hostPssKb` | {'int': 5550} |
| `kind` | {'str': 5550} |
| `memAvailableKb` | {'int': 5550} |
| `memTotalKb` | {'int': 5550} |
| `otherPssKb` | {'int': 5550} |
| `processes` | {'int': 5550} |
| `pssFallbackProcesses` | {'int': 5550} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
