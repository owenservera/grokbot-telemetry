# sandbox_telemetry_parse — 2026-11-07 16:21:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=536691 lines=1194
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1185 |
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
| `chromeBrowserPssKb` | {'int': 1185} |
| `chromeGpuPssKb` | {'int': 1185} |
| `chromeOtherPssKb` | {'int': 1185} |
| `chromeProcesses` | {'int': 1185} |
| `chromeProfiles` | {'int': 1185} |
| `chromeRendererMaxPssKb` | {'int': 1185} |
| `chromeRendererPssKb` | {'int': 1185} |
| `chromeRenderers` | {'int': 1185} |
| `chromeTabs` | {'int': 1185} |
| `chromeTabsProbedProfiles` | {'int': 1185} |
| `chromeUtilityPssKb` | {'int': 1185} |
| `desktopPssKb` | {'int': 1185} |
| `hostPssKb` | {'int': 1185} |
| `kind` | {'str': 1185} |
| `memAvailableKb` | {'int': 1185} |
| `memTotalKb` | {'int': 1185} |
| `otherPssKb` | {'int': 1185} |
| `processes` | {'int': 1185} |
| `pssFallbackProcesses` | {'int': 1185} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
