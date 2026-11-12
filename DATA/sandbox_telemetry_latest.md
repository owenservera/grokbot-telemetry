# sandbox_telemetry_parse — 2026-11-12 07:50:58 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2032255 lines=4499
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4490 |
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
| `chromeBrowserPssKb` | {'int': 4490} |
| `chromeGpuPssKb` | {'int': 4490} |
| `chromeOtherPssKb` | {'int': 4490} |
| `chromeProcesses` | {'int': 4490} |
| `chromeProfiles` | {'int': 4490} |
| `chromeRendererMaxPssKb` | {'int': 4490} |
| `chromeRendererPssKb` | {'int': 4490} |
| `chromeRenderers` | {'int': 4490} |
| `chromeTabs` | {'int': 4490} |
| `chromeTabsProbedProfiles` | {'int': 4490} |
| `chromeUtilityPssKb` | {'int': 4490} |
| `desktopPssKb` | {'int': 4490} |
| `hostPssKb` | {'int': 4490} |
| `kind` | {'str': 4490} |
| `memAvailableKb` | {'int': 4490} |
| `memTotalKb` | {'int': 4490} |
| `otherPssKb` | {'int': 4490} |
| `processes` | {'int': 4490} |
| `pssFallbackProcesses` | {'int': 4490} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
