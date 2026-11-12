# sandbox_telemetry_parse — 2026-11-12 23:26:10 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2371802 lines=5249
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5240 |
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
| `chromeBrowserPssKb` | {'int': 5240} |
| `chromeGpuPssKb` | {'int': 5240} |
| `chromeOtherPssKb` | {'int': 5240} |
| `chromeProcesses` | {'int': 5240} |
| `chromeProfiles` | {'int': 5240} |
| `chromeRendererMaxPssKb` | {'int': 5240} |
| `chromeRendererPssKb` | {'int': 5240} |
| `chromeRenderers` | {'int': 5240} |
| `chromeTabs` | {'int': 5240} |
| `chromeTabsProbedProfiles` | {'int': 5240} |
| `chromeUtilityPssKb` | {'int': 5240} |
| `desktopPssKb` | {'int': 5240} |
| `hostPssKb` | {'int': 5240} |
| `kind` | {'str': 5240} |
| `memAvailableKb` | {'int': 5240} |
| `memTotalKb` | {'int': 5240} |
| `otherPssKb` | {'int': 5240} |
| `processes` | {'int': 5240} |
| `pssFallbackProcesses` | {'int': 5240} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
