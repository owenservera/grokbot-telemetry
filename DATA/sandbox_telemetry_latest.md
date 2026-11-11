# sandbox_telemetry_parse — 2026-11-11 16:07:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1708215 lines=3783
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3774 |
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
| `chromeBrowserPssKb` | {'int': 3774} |
| `chromeGpuPssKb` | {'int': 3774} |
| `chromeOtherPssKb` | {'int': 3774} |
| `chromeProcesses` | {'int': 3774} |
| `chromeProfiles` | {'int': 3774} |
| `chromeRendererMaxPssKb` | {'int': 3774} |
| `chromeRendererPssKb` | {'int': 3774} |
| `chromeRenderers` | {'int': 3774} |
| `chromeTabs` | {'int': 3774} |
| `chromeTabsProbedProfiles` | {'int': 3774} |
| `chromeUtilityPssKb` | {'int': 3774} |
| `desktopPssKb` | {'int': 3774} |
| `hostPssKb` | {'int': 3774} |
| `kind` | {'str': 3774} |
| `memAvailableKb` | {'int': 3774} |
| `memTotalKb` | {'int': 3774} |
| `otherPssKb` | {'int': 3774} |
| `processes` | {'int': 3774} |
| `pssFallbackProcesses` | {'int': 3774} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
