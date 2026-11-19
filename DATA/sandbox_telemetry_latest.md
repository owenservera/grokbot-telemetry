# sandbox_telemetry_parse — 2026-11-19 20:57:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1439047 lines=3191
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3180 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3180} |
| `chromeGpuPssKb` | {'int': 3180} |
| `chromeOtherPssKb` | {'int': 3180} |
| `chromeProcesses` | {'int': 3180} |
| `chromeProfiles` | {'int': 3180} |
| `chromeRendererMaxPssKb` | {'int': 3180} |
| `chromeRendererPssKb` | {'int': 3180} |
| `chromeRenderers` | {'int': 3180} |
| `chromeTabs` | {'int': 3180} |
| `chromeTabsProbedProfiles` | {'int': 3180} |
| `chromeUtilityPssKb` | {'int': 3180} |
| `desktopPssKb` | {'int': 3180} |
| `hostPssKb` | {'int': 3180} |
| `kind` | {'str': 3180} |
| `memAvailableKb` | {'int': 3180} |
| `memTotalKb` | {'int': 3180} |
| `otherPssKb` | {'int': 3180} |
| `processes` | {'int': 3180} |
| `pssFallbackProcesses` | {'int': 3180} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
