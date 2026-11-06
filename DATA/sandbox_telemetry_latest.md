# sandbox_telemetry_parse — 2026-11-06 20:00:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=143670 lines=325
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 316 |
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
| `chromeBrowserPssKb` | {'int': 316} |
| `chromeGpuPssKb` | {'int': 316} |
| `chromeOtherPssKb` | {'int': 316} |
| `chromeProcesses` | {'int': 316} |
| `chromeProfiles` | {'int': 316} |
| `chromeRendererMaxPssKb` | {'int': 316} |
| `chromeRendererPssKb` | {'int': 316} |
| `chromeRenderers` | {'int': 316} |
| `chromeTabs` | {'int': 316} |
| `chromeTabsProbedProfiles` | {'int': 316} |
| `chromeUtilityPssKb` | {'int': 316} |
| `desktopPssKb` | {'int': 316} |
| `hostPssKb` | {'int': 316} |
| `kind` | {'str': 316} |
| `memAvailableKb` | {'int': 316} |
| `memTotalKb` | {'int': 316} |
| `otherPssKb` | {'int': 316} |
| `processes` | {'int': 316} |
| `pssFallbackProcesses` | {'int': 316} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
