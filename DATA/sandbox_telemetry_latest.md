# sandbox_telemetry_parse — 2026-11-10 23:23:05 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1372556 lines=3041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3032 |
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
| `chromeBrowserPssKb` | {'int': 3032} |
| `chromeGpuPssKb` | {'int': 3032} |
| `chromeOtherPssKb` | {'int': 3032} |
| `chromeProcesses` | {'int': 3032} |
| `chromeProfiles` | {'int': 3032} |
| `chromeRendererMaxPssKb` | {'int': 3032} |
| `chromeRendererPssKb` | {'int': 3032} |
| `chromeRenderers` | {'int': 3032} |
| `chromeTabs` | {'int': 3032} |
| `chromeTabsProbedProfiles` | {'int': 3032} |
| `chromeUtilityPssKb` | {'int': 3032} |
| `desktopPssKb` | {'int': 3032} |
| `hostPssKb` | {'int': 3032} |
| `kind` | {'str': 3032} |
| `memAvailableKb` | {'int': 3032} |
| `memTotalKb` | {'int': 3032} |
| `otherPssKb` | {'int': 3032} |
| `processes` | {'int': 3032} |
| `pssFallbackProcesses` | {'int': 3032} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
