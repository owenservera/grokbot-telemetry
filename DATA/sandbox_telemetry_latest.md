# sandbox_telemetry_parse — 2026-11-27 01:12:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=168888 lines=380
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 372 |
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
| `chromeBrowserPssKb` | {'int': 372} |
| `chromeGpuPssKb` | {'int': 372} |
| `chromeOtherPssKb` | {'int': 372} |
| `chromeProcesses` | {'int': 372} |
| `chromeProfiles` | {'int': 372} |
| `chromeRendererMaxPssKb` | {'int': 372} |
| `chromeRendererPssKb` | {'int': 372} |
| `chromeRenderers` | {'int': 372} |
| `chromeTabs` | {'int': 372} |
| `chromeTabsProbedProfiles` | {'int': 372} |
| `chromeUtilityPssKb` | {'int': 372} |
| `desktopPssKb` | {'int': 372} |
| `hostPssKb` | {'int': 372} |
| `kind` | {'str': 372} |
| `memAvailableKb` | {'int': 372} |
| `memTotalKb` | {'int': 372} |
| `otherPssKb` | {'int': 372} |
| `processes` | {'int': 372} |
| `pssFallbackProcesses` | {'int': 372} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
