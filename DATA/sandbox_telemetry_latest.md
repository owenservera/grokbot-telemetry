# sandbox_telemetry_parse — 2026-11-12 08:23:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2041305 lines=4519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4510 |
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
| `chromeBrowserPssKb` | {'int': 4510} |
| `chromeGpuPssKb` | {'int': 4510} |
| `chromeOtherPssKb` | {'int': 4510} |
| `chromeProcesses` | {'int': 4510} |
| `chromeProfiles` | {'int': 4510} |
| `chromeRendererMaxPssKb` | {'int': 4510} |
| `chromeRendererPssKb` | {'int': 4510} |
| `chromeRenderers` | {'int': 4510} |
| `chromeTabs` | {'int': 4510} |
| `chromeTabsProbedProfiles` | {'int': 4510} |
| `chromeUtilityPssKb` | {'int': 4510} |
| `desktopPssKb` | {'int': 4510} |
| `hostPssKb` | {'int': 4510} |
| `kind` | {'str': 4510} |
| `memAvailableKb` | {'int': 4510} |
| `memTotalKb` | {'int': 4510} |
| `otherPssKb` | {'int': 4510} |
| `processes` | {'int': 4510} |
| `pssFallbackProcesses` | {'int': 4510} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
