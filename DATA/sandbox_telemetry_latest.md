# sandbox_telemetry_parse — 2026-11-11 22:06:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1839936 lines=4074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4065 |
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
| `chromeBrowserPssKb` | {'int': 4065} |
| `chromeGpuPssKb` | {'int': 4065} |
| `chromeOtherPssKb` | {'int': 4065} |
| `chromeProcesses` | {'int': 4065} |
| `chromeProfiles` | {'int': 4065} |
| `chromeRendererMaxPssKb` | {'int': 4065} |
| `chromeRendererPssKb` | {'int': 4065} |
| `chromeRenderers` | {'int': 4065} |
| `chromeTabs` | {'int': 4065} |
| `chromeTabsProbedProfiles` | {'int': 4065} |
| `chromeUtilityPssKb` | {'int': 4065} |
| `desktopPssKb` | {'int': 4065} |
| `hostPssKb` | {'int': 4065} |
| `kind` | {'str': 4065} |
| `memAvailableKb` | {'int': 4065} |
| `memTotalKb` | {'int': 4065} |
| `otherPssKb` | {'int': 4065} |
| `processes` | {'int': 4065} |
| `pssFallbackProcesses` | {'int': 4065} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
