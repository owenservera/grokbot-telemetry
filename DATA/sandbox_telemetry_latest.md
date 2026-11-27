# sandbox_telemetry_parse — 2026-11-27 22:39:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=621345 lines=1380
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1372 |
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
| `chromeBrowserPssKb` | {'int': 1372} |
| `chromeGpuPssKb` | {'int': 1372} |
| `chromeOtherPssKb` | {'int': 1372} |
| `chromeProcesses` | {'int': 1372} |
| `chromeProfiles` | {'int': 1372} |
| `chromeRendererMaxPssKb` | {'int': 1372} |
| `chromeRendererPssKb` | {'int': 1372} |
| `chromeRenderers` | {'int': 1372} |
| `chromeTabs` | {'int': 1372} |
| `chromeTabsProbedProfiles` | {'int': 1372} |
| `chromeUtilityPssKb` | {'int': 1372} |
| `desktopPssKb` | {'int': 1372} |
| `hostPssKb` | {'int': 1372} |
| `kind` | {'str': 1372} |
| `memAvailableKb` | {'int': 1372} |
| `memTotalKb` | {'int': 1372} |
| `otherPssKb` | {'int': 1372} |
| `processes` | {'int': 1372} |
| `pssFallbackProcesses` | {'int': 1372} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
