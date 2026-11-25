# sandbox_telemetry_parse — 2026-11-25 09:55:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2704085 lines=5991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5976 |
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
| `chromeBrowserPssKb` | {'int': 5976} |
| `chromeGpuPssKb` | {'int': 5976} |
| `chromeOtherPssKb` | {'int': 5976} |
| `chromeProcesses` | {'int': 5976} |
| `chromeProfiles` | {'int': 5976} |
| `chromeRendererMaxPssKb` | {'int': 5976} |
| `chromeRendererPssKb` | {'int': 5976} |
| `chromeRenderers` | {'int': 5976} |
| `chromeTabs` | {'int': 5976} |
| `chromeTabsProbedProfiles` | {'int': 5976} |
| `chromeUtilityPssKb` | {'int': 5976} |
| `desktopPssKb` | {'int': 5976} |
| `hostPssKb` | {'int': 5976} |
| `kind` | {'str': 5976} |
| `memAvailableKb` | {'int': 5976} |
| `memTotalKb` | {'int': 5976} |
| `otherPssKb` | {'int': 5976} |
| `processes` | {'int': 5976} |
| `pssFallbackProcesses` | {'int': 5976} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
