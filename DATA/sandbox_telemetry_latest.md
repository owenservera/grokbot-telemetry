# sandbox_telemetry_parse — 2026-11-12 19:04:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2282641 lines=5052
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5043 |
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
| `chromeBrowserPssKb` | {'int': 5043} |
| `chromeGpuPssKb` | {'int': 5043} |
| `chromeOtherPssKb` | {'int': 5043} |
| `chromeProcesses` | {'int': 5043} |
| `chromeProfiles` | {'int': 5043} |
| `chromeRendererMaxPssKb` | {'int': 5043} |
| `chromeRendererPssKb` | {'int': 5043} |
| `chromeRenderers` | {'int': 5043} |
| `chromeTabs` | {'int': 5043} |
| `chromeTabsProbedProfiles` | {'int': 5043} |
| `chromeUtilityPssKb` | {'int': 5043} |
| `desktopPssKb` | {'int': 5043} |
| `hostPssKb` | {'int': 5043} |
| `kind` | {'str': 5043} |
| `memAvailableKb` | {'int': 5043} |
| `memTotalKb` | {'int': 5043} |
| `otherPssKb` | {'int': 5043} |
| `processes` | {'int': 5043} |
| `pssFallbackProcesses` | {'int': 5043} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
