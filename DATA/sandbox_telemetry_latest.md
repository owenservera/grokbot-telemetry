# sandbox_telemetry_parse — 2026-10-06 15:20:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=445706 lines=982
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 977 |
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
| `chromeBrowserPssKb` | {'int': 977} |
| `chromeGpuPssKb` | {'int': 977} |
| `chromeOtherPssKb` | {'int': 977} |
| `chromeProcesses` | {'int': 977} |
| `chromeProfiles` | {'int': 977} |
| `chromeRendererMaxPssKb` | {'int': 977} |
| `chromeRendererPssKb` | {'int': 977} |
| `chromeRenderers` | {'int': 977} |
| `chromeTabs` | {'int': 977} |
| `chromeTabsProbedProfiles` | {'int': 977} |
| `chromeUtilityPssKb` | {'int': 977} |
| `desktopPssKb` | {'int': 977} |
| `hostPssKb` | {'int': 977} |
| `kind` | {'str': 977} |
| `memAvailableKb` | {'int': 977} |
| `memTotalKb` | {'int': 977} |
| `otherPssKb` | {'int': 977} |
| `processes` | {'int': 977} |
| `pssFallbackProcesses` | {'int': 977} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
