# sandbox_telemetry_parse — 2026-11-10 09:53:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1086456 lines=2409
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2400 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2400} |
| `chromeGpuPssKb` | {'int': 2400} |
| `chromeOtherPssKb` | {'int': 2400} |
| `chromeProcesses` | {'int': 2400} |
| `chromeProfiles` | {'int': 2400} |
| `chromeRendererMaxPssKb` | {'int': 2400} |
| `chromeRendererPssKb` | {'int': 2400} |
| `chromeRenderers` | {'int': 2400} |
| `chromeTabs` | {'int': 2400} |
| `chromeTabsProbedProfiles` | {'int': 2400} |
| `chromeUtilityPssKb` | {'int': 2400} |
| `desktopPssKb` | {'int': 2400} |
| `hostPssKb` | {'int': 2400} |
| `kind` | {'str': 2400} |
| `memAvailableKb` | {'int': 2400} |
| `memTotalKb` | {'int': 2400} |
| `otherPssKb` | {'int': 2400} |
| `processes` | {'int': 2400} |
| `pssFallbackProcesses` | {'int': 2400} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
