# sandbox_telemetry_parse — 2026-11-28 19:13:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1018212 lines=2257
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2249 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2249} |
| `chromeGpuPssKb` | {'int': 2249} |
| `chromeOtherPssKb` | {'int': 2249} |
| `chromeProcesses` | {'int': 2249} |
| `chromeProfiles` | {'int': 2249} |
| `chromeRendererMaxPssKb` | {'int': 2249} |
| `chromeRendererPssKb` | {'int': 2249} |
| `chromeRenderers` | {'int': 2249} |
| `chromeTabs` | {'int': 2249} |
| `chromeTabsProbedProfiles` | {'int': 2249} |
| `chromeUtilityPssKb` | {'int': 2249} |
| `desktopPssKb` | {'int': 2249} |
| `hostPssKb` | {'int': 2249} |
| `kind` | {'str': 2249} |
| `memAvailableKb` | {'int': 2249} |
| `memTotalKb` | {'int': 2249} |
| `otherPssKb` | {'int': 2249} |
| `processes` | {'int': 2249} |
| `pssFallbackProcesses` | {'int': 2249} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
