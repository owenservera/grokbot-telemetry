# sandbox_telemetry_parse — 2026-11-19 12:35:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1275938 lines=2829
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2820 |
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
| `chromeBrowserPssKb` | {'int': 2820} |
| `chromeGpuPssKb` | {'int': 2820} |
| `chromeOtherPssKb` | {'int': 2820} |
| `chromeProcesses` | {'int': 2820} |
| `chromeProfiles` | {'int': 2820} |
| `chromeRendererMaxPssKb` | {'int': 2820} |
| `chromeRendererPssKb` | {'int': 2820} |
| `chromeRenderers` | {'int': 2820} |
| `chromeTabs` | {'int': 2820} |
| `chromeTabsProbedProfiles` | {'int': 2820} |
| `chromeUtilityPssKb` | {'int': 2820} |
| `desktopPssKb` | {'int': 2820} |
| `hostPssKb` | {'int': 2820} |
| `kind` | {'str': 2820} |
| `memAvailableKb` | {'int': 2820} |
| `memTotalKb` | {'int': 2820} |
| `otherPssKb` | {'int': 2820} |
| `processes` | {'int': 2820} |
| `pssFallbackProcesses` | {'int': 2820} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
