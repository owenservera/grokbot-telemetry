# sandbox_telemetry_parse — 2026-10-27 11:16:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=485581 lines=1077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1072 |
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
| `chromeBrowserPssKb` | {'int': 1072} |
| `chromeGpuPssKb` | {'int': 1072} |
| `chromeOtherPssKb` | {'int': 1072} |
| `chromeProcesses` | {'int': 1072} |
| `chromeProfiles` | {'int': 1072} |
| `chromeRendererMaxPssKb` | {'int': 1072} |
| `chromeRendererPssKb` | {'int': 1072} |
| `chromeRenderers` | {'int': 1072} |
| `chromeTabs` | {'int': 1072} |
| `chromeTabsProbedProfiles` | {'int': 1072} |
| `chromeUtilityPssKb` | {'int': 1072} |
| `desktopPssKb` | {'int': 1072} |
| `hostPssKb` | {'int': 1072} |
| `kind` | {'str': 1072} |
| `memAvailableKb` | {'int': 1072} |
| `memTotalKb` | {'int': 1072} |
| `otherPssKb` | {'int': 1072} |
| `processes` | {'int': 1072} |
| `pssFallbackProcesses` | {'int': 1072} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
