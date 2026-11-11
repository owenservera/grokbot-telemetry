# sandbox_telemetry_parse — 2026-11-11 21:54:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1834954 lines=4063
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4054 |
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
| `chromeBrowserPssKb` | {'int': 4054} |
| `chromeGpuPssKb` | {'int': 4054} |
| `chromeOtherPssKb` | {'int': 4054} |
| `chromeProcesses` | {'int': 4054} |
| `chromeProfiles` | {'int': 4054} |
| `chromeRendererMaxPssKb` | {'int': 4054} |
| `chromeRendererPssKb` | {'int': 4054} |
| `chromeRenderers` | {'int': 4054} |
| `chromeTabs` | {'int': 4054} |
| `chromeTabsProbedProfiles` | {'int': 4054} |
| `chromeUtilityPssKb` | {'int': 4054} |
| `desktopPssKb` | {'int': 4054} |
| `hostPssKb` | {'int': 4054} |
| `kind` | {'str': 4054} |
| `memAvailableKb` | {'int': 4054} |
| `memTotalKb` | {'int': 4054} |
| `otherPssKb` | {'int': 4054} |
| `processes` | {'int': 4054} |
| `pssFallbackProcesses` | {'int': 4054} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
