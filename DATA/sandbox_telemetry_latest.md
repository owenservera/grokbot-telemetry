# sandbox_telemetry_parse — 2026-11-24 19:47:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2423679 lines=5371
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5356 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5356} |
| `chromeGpuPssKb` | {'int': 5356} |
| `chromeOtherPssKb` | {'int': 5356} |
| `chromeProcesses` | {'int': 5356} |
| `chromeProfiles` | {'int': 5356} |
| `chromeRendererMaxPssKb` | {'int': 5356} |
| `chromeRendererPssKb` | {'int': 5356} |
| `chromeRenderers` | {'int': 5356} |
| `chromeTabs` | {'int': 5356} |
| `chromeTabsProbedProfiles` | {'int': 5356} |
| `chromeUtilityPssKb` | {'int': 5356} |
| `desktopPssKb` | {'int': 5356} |
| `hostPssKb` | {'int': 5356} |
| `kind` | {'str': 5356} |
| `memAvailableKb` | {'int': 5356} |
| `memTotalKb` | {'int': 5356} |
| `otherPssKb` | {'int': 5356} |
| `processes` | {'int': 5356} |
| `pssFallbackProcesses` | {'int': 5356} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
