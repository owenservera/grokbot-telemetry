# sandbox_telemetry_parse — 2026-11-26 08:09:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3156340 lines=6991
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6976 |
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
| `chromeBrowserPssKb` | {'int': 6976} |
| `chromeGpuPssKb` | {'int': 6976} |
| `chromeOtherPssKb` | {'int': 6976} |
| `chromeProcesses` | {'int': 6976} |
| `chromeProfiles` | {'int': 6976} |
| `chromeRendererMaxPssKb` | {'int': 6976} |
| `chromeRendererPssKb` | {'int': 6976} |
| `chromeRenderers` | {'int': 6976} |
| `chromeTabs` | {'int': 6976} |
| `chromeTabsProbedProfiles` | {'int': 6976} |
| `chromeUtilityPssKb` | {'int': 6976} |
| `desktopPssKb` | {'int': 6976} |
| `hostPssKb` | {'int': 6976} |
| `kind` | {'str': 6976} |
| `memAvailableKb` | {'int': 6976} |
| `memTotalKb` | {'int': 6976} |
| `otherPssKb` | {'int': 6976} |
| `processes` | {'int': 6976} |
| `pssFallbackProcesses` | {'int': 6976} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
