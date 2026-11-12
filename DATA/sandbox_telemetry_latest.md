# sandbox_telemetry_parse — 2026-11-12 02:38:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1935003 lines=4284
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4275 |
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
| `chromeBrowserPssKb` | {'int': 4275} |
| `chromeGpuPssKb` | {'int': 4275} |
| `chromeOtherPssKb` | {'int': 4275} |
| `chromeProcesses` | {'int': 4275} |
| `chromeProfiles` | {'int': 4275} |
| `chromeRendererMaxPssKb` | {'int': 4275} |
| `chromeRendererPssKb` | {'int': 4275} |
| `chromeRenderers` | {'int': 4275} |
| `chromeTabs` | {'int': 4275} |
| `chromeTabsProbedProfiles` | {'int': 4275} |
| `chromeUtilityPssKb` | {'int': 4275} |
| `desktopPssKb` | {'int': 4275} |
| `hostPssKb` | {'int': 4275} |
| `kind` | {'str': 4275} |
| `memAvailableKb` | {'int': 4275} |
| `memTotalKb` | {'int': 4275} |
| `otherPssKb` | {'int': 4275} |
| `processes` | {'int': 4275} |
| `pssFallbackProcesses` | {'int': 4275} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
