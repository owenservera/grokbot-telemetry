# sandbox_telemetry_parse — 2026-11-12 21:38:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2339236 lines=5177
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5168 |
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
| `chromeBrowserPssKb` | {'int': 5168} |
| `chromeGpuPssKb` | {'int': 5168} |
| `chromeOtherPssKb` | {'int': 5168} |
| `chromeProcesses` | {'int': 5168} |
| `chromeProfiles` | {'int': 5168} |
| `chromeRendererMaxPssKb` | {'int': 5168} |
| `chromeRendererPssKb` | {'int': 5168} |
| `chromeRenderers` | {'int': 5168} |
| `chromeTabs` | {'int': 5168} |
| `chromeTabsProbedProfiles` | {'int': 5168} |
| `chromeUtilityPssKb` | {'int': 5168} |
| `desktopPssKb` | {'int': 5168} |
| `hostPssKb` | {'int': 5168} |
| `kind` | {'str': 5168} |
| `memAvailableKb` | {'int': 5168} |
| `memTotalKb` | {'int': 5168} |
| `otherPssKb` | {'int': 5168} |
| `processes` | {'int': 5168} |
| `pssFallbackProcesses` | {'int': 5168} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
