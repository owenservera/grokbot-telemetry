# sandbox_telemetry_parse — 2026-10-27 09:01:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=429452 lines=953
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 948 |
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
| `chromeBrowserPssKb` | {'int': 948} |
| `chromeGpuPssKb` | {'int': 948} |
| `chromeOtherPssKb` | {'int': 948} |
| `chromeProcesses` | {'int': 948} |
| `chromeProfiles` | {'int': 948} |
| `chromeRendererMaxPssKb` | {'int': 948} |
| `chromeRendererPssKb` | {'int': 948} |
| `chromeRenderers` | {'int': 948} |
| `chromeTabs` | {'int': 948} |
| `chromeTabsProbedProfiles` | {'int': 948} |
| `chromeUtilityPssKb` | {'int': 948} |
| `desktopPssKb` | {'int': 948} |
| `hostPssKb` | {'int': 948} |
| `kind` | {'str': 948} |
| `memAvailableKb` | {'int': 948} |
| `memTotalKb` | {'int': 948} |
| `otherPssKb` | {'int': 948} |
| `processes` | {'int': 948} |
| `pssFallbackProcesses` | {'int': 948} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
