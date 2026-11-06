# sandbox_telemetry_parse — 2026-11-07 00:24:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=231417 lines=519
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 510 |
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
| `chromeBrowserPssKb` | {'int': 510} |
| `chromeGpuPssKb` | {'int': 510} |
| `chromeOtherPssKb` | {'int': 510} |
| `chromeProcesses` | {'int': 510} |
| `chromeProfiles` | {'int': 510} |
| `chromeRendererMaxPssKb` | {'int': 510} |
| `chromeRendererPssKb` | {'int': 510} |
| `chromeRenderers` | {'int': 510} |
| `chromeTabs` | {'int': 510} |
| `chromeTabsProbedProfiles` | {'int': 510} |
| `chromeUtilityPssKb` | {'int': 510} |
| `desktopPssKb` | {'int': 510} |
| `hostPssKb` | {'int': 510} |
| `kind` | {'str': 510} |
| `memAvailableKb` | {'int': 510} |
| `memTotalKb` | {'int': 510} |
| `otherPssKb` | {'int': 510} |
| `processes` | {'int': 510} |
| `pssFallbackProcesses` | {'int': 510} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
