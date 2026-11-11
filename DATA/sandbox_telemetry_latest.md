# sandbox_telemetry_parse — 2026-11-11 19:55:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1791958 lines=3968
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3959 |
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
| `chromeBrowserPssKb` | {'int': 3959} |
| `chromeGpuPssKb` | {'int': 3959} |
| `chromeOtherPssKb` | {'int': 3959} |
| `chromeProcesses` | {'int': 3959} |
| `chromeProfiles` | {'int': 3959} |
| `chromeRendererMaxPssKb` | {'int': 3959} |
| `chromeRendererPssKb` | {'int': 3959} |
| `chromeRenderers` | {'int': 3959} |
| `chromeTabs` | {'int': 3959} |
| `chromeTabsProbedProfiles` | {'int': 3959} |
| `chromeUtilityPssKb` | {'int': 3959} |
| `desktopPssKb` | {'int': 3959} |
| `hostPssKb` | {'int': 3959} |
| `kind` | {'str': 3959} |
| `memAvailableKb` | {'int': 3959} |
| `memTotalKb` | {'int': 3959} |
| `otherPssKb` | {'int': 3959} |
| `processes` | {'int': 3959} |
| `pssFallbackProcesses` | {'int': 3959} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
