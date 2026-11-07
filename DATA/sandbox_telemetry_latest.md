# sandbox_telemetry_parse — 2026-11-07 11:35:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=442161 lines=985
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 976 |
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
| `chromeBrowserPssKb` | {'int': 976} |
| `chromeGpuPssKb` | {'int': 976} |
| `chromeOtherPssKb` | {'int': 976} |
| `chromeProcesses` | {'int': 976} |
| `chromeProfiles` | {'int': 976} |
| `chromeRendererMaxPssKb` | {'int': 976} |
| `chromeRendererPssKb` | {'int': 976} |
| `chromeRenderers` | {'int': 976} |
| `chromeTabs` | {'int': 976} |
| `chromeTabsProbedProfiles` | {'int': 976} |
| `chromeUtilityPssKb` | {'int': 976} |
| `desktopPssKb` | {'int': 976} |
| `hostPssKb` | {'int': 976} |
| `kind` | {'str': 976} |
| `memAvailableKb` | {'int': 976} |
| `memTotalKb` | {'int': 976} |
| `otherPssKb` | {'int': 976} |
| `processes` | {'int': 976} |
| `pssFallbackProcesses` | {'int': 976} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
