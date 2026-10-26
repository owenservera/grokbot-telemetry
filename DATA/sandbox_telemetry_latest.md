# sandbox_telemetry_parse — 2026-10-26 17:44:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=52023 lines=119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 114 |
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
| `chromeBrowserPssKb` | {'int': 114} |
| `chromeGpuPssKb` | {'int': 114} |
| `chromeOtherPssKb` | {'int': 114} |
| `chromeProcesses` | {'int': 114} |
| `chromeProfiles` | {'int': 114} |
| `chromeRendererMaxPssKb` | {'int': 114} |
| `chromeRendererPssKb` | {'int': 114} |
| `chromeRenderers` | {'int': 114} |
| `chromeTabs` | {'int': 114} |
| `chromeTabsProbedProfiles` | {'int': 114} |
| `chromeUtilityPssKb` | {'int': 114} |
| `desktopPssKb` | {'int': 114} |
| `hostPssKb` | {'int': 114} |
| `kind` | {'str': 114} |
| `memAvailableKb` | {'int': 114} |
| `memTotalKb` | {'int': 114} |
| `otherPssKb` | {'int': 114} |
| `processes` | {'int': 114} |
| `pssFallbackProcesses` | {'int': 114} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
