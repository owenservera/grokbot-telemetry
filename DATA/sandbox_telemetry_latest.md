# sandbox_telemetry_parse — 2026-11-09 22:27:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=866161 lines=1922
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1913 |
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
| `chromeBrowserPssKb` | {'int': 1913} |
| `chromeGpuPssKb` | {'int': 1913} |
| `chromeOtherPssKb` | {'int': 1913} |
| `chromeProcesses` | {'int': 1913} |
| `chromeProfiles` | {'int': 1913} |
| `chromeRendererMaxPssKb` | {'int': 1913} |
| `chromeRendererPssKb` | {'int': 1913} |
| `chromeRenderers` | {'int': 1913} |
| `chromeTabs` | {'int': 1913} |
| `chromeTabsProbedProfiles` | {'int': 1913} |
| `chromeUtilityPssKb` | {'int': 1913} |
| `desktopPssKb` | {'int': 1913} |
| `hostPssKb` | {'int': 1913} |
| `kind` | {'str': 1913} |
| `memAvailableKb` | {'int': 1913} |
| `memTotalKb` | {'int': 1913} |
| `otherPssKb` | {'int': 1913} |
| `processes` | {'int': 1913} |
| `pssFallbackProcesses` | {'int': 1913} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
