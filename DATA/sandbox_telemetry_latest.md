# sandbox_telemetry_parse — 2026-10-26 16:04:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=8990 lines=24
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 19 |
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
| `chromeBrowserPssKb` | {'int': 19} |
| `chromeGpuPssKb` | {'int': 19} |
| `chromeOtherPssKb` | {'int': 19} |
| `chromeProcesses` | {'int': 19} |
| `chromeProfiles` | {'int': 19} |
| `chromeRendererMaxPssKb` | {'int': 19} |
| `chromeRendererPssKb` | {'int': 19} |
| `chromeRenderers` | {'int': 19} |
| `chromeTabs` | {'int': 19} |
| `chromeTabsProbedProfiles` | {'int': 19} |
| `chromeUtilityPssKb` | {'int': 19} |
| `desktopPssKb` | {'int': 19} |
| `hostPssKb` | {'int': 19} |
| `kind` | {'str': 19} |
| `memAvailableKb` | {'int': 19} |
| `memTotalKb` | {'int': 19} |
| `otherPssKb` | {'int': 19} |
| `processes` | {'int': 19} |
| `pssFallbackProcesses` | {'int': 19} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
