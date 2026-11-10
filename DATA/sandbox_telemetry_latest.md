# sandbox_telemetry_parse — 2026-11-10 20:05:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1296982 lines=2874
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2865 |
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
| `chromeBrowserPssKb` | {'int': 2865} |
| `chromeGpuPssKb` | {'int': 2865} |
| `chromeOtherPssKb` | {'int': 2865} |
| `chromeProcesses` | {'int': 2865} |
| `chromeProfiles` | {'int': 2865} |
| `chromeRendererMaxPssKb` | {'int': 2865} |
| `chromeRendererPssKb` | {'int': 2865} |
| `chromeRenderers` | {'int': 2865} |
| `chromeTabs` | {'int': 2865} |
| `chromeTabsProbedProfiles` | {'int': 2865} |
| `chromeUtilityPssKb` | {'int': 2865} |
| `desktopPssKb` | {'int': 2865} |
| `hostPssKb` | {'int': 2865} |
| `kind` | {'str': 2865} |
| `memAvailableKb` | {'int': 2865} |
| `memTotalKb` | {'int': 2865} |
| `otherPssKb` | {'int': 2865} |
| `processes` | {'int': 2865} |
| `pssFallbackProcesses` | {'int': 2865} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
