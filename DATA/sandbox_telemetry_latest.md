# sandbox_telemetry_parse — 2026-11-19 09:30:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1207191 lines=2677
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2668 |
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
| `chromeBrowserPssKb` | {'int': 2668} |
| `chromeGpuPssKb` | {'int': 2668} |
| `chromeOtherPssKb` | {'int': 2668} |
| `chromeProcesses` | {'int': 2668} |
| `chromeProfiles` | {'int': 2668} |
| `chromeRendererMaxPssKb` | {'int': 2668} |
| `chromeRendererPssKb` | {'int': 2668} |
| `chromeRenderers` | {'int': 2668} |
| `chromeTabs` | {'int': 2668} |
| `chromeTabsProbedProfiles` | {'int': 2668} |
| `chromeUtilityPssKb` | {'int': 2668} |
| `desktopPssKb` | {'int': 2668} |
| `hostPssKb` | {'int': 2668} |
| `kind` | {'str': 2668} |
| `memAvailableKb` | {'int': 2668} |
| `memTotalKb` | {'int': 2668} |
| `otherPssKb` | {'int': 2668} |
| `processes` | {'int': 2668} |
| `pssFallbackProcesses` | {'int': 2668} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
