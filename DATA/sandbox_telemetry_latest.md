# sandbox_telemetry_parse — 2026-11-10 17:51:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1252171 lines=2775
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2766 |
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
| `chromeBrowserPssKb` | {'int': 2766} |
| `chromeGpuPssKb` | {'int': 2766} |
| `chromeOtherPssKb` | {'int': 2766} |
| `chromeProcesses` | {'int': 2766} |
| `chromeProfiles` | {'int': 2766} |
| `chromeRendererMaxPssKb` | {'int': 2766} |
| `chromeRendererPssKb` | {'int': 2766} |
| `chromeRenderers` | {'int': 2766} |
| `chromeTabs` | {'int': 2766} |
| `chromeTabsProbedProfiles` | {'int': 2766} |
| `chromeUtilityPssKb` | {'int': 2766} |
| `desktopPssKb` | {'int': 2766} |
| `hostPssKb` | {'int': 2766} |
| `kind` | {'str': 2766} |
| `memAvailableKb` | {'int': 2766} |
| `memTotalKb` | {'int': 2766} |
| `otherPssKb` | {'int': 2766} |
| `processes` | {'int': 2766} |
| `pssFallbackProcesses` | {'int': 2766} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
