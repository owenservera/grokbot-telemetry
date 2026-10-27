# sandbox_telemetry_parse — 2026-10-27 08:20:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=411372 lines=913
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 908 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 908} |
| `chromeGpuPssKb` | {'int': 908} |
| `chromeOtherPssKb` | {'int': 908} |
| `chromeProcesses` | {'int': 908} |
| `chromeProfiles` | {'int': 908} |
| `chromeRendererMaxPssKb` | {'int': 908} |
| `chromeRendererPssKb` | {'int': 908} |
| `chromeRenderers` | {'int': 908} |
| `chromeTabs` | {'int': 908} |
| `chromeTabsProbedProfiles` | {'int': 908} |
| `chromeUtilityPssKb` | {'int': 908} |
| `desktopPssKb` | {'int': 908} |
| `hostPssKb` | {'int': 908} |
| `kind` | {'str': 908} |
| `memAvailableKb` | {'int': 908} |
| `memTotalKb` | {'int': 908} |
| `otherPssKb` | {'int': 908} |
| `processes` | {'int': 908} |
| `pssFallbackProcesses` | {'int': 908} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
