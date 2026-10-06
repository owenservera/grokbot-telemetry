# sandbox_telemetry_parse — 2026-10-06 19:13:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=551954 lines=1214
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1209 |
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
| `chromeBrowserPssKb` | {'int': 1209} |
| `chromeGpuPssKb` | {'int': 1209} |
| `chromeOtherPssKb` | {'int': 1209} |
| `chromeProcesses` | {'int': 1209} |
| `chromeProfiles` | {'int': 1209} |
| `chromeRendererMaxPssKb` | {'int': 1209} |
| `chromeRendererPssKb` | {'int': 1209} |
| `chromeRenderers` | {'int': 1209} |
| `chromeTabs` | {'int': 1209} |
| `chromeTabsProbedProfiles` | {'int': 1209} |
| `chromeUtilityPssKb` | {'int': 1209} |
| `desktopPssKb` | {'int': 1209} |
| `hostPssKb` | {'int': 1209} |
| `kind` | {'str': 1209} |
| `memAvailableKb` | {'int': 1209} |
| `memTotalKb` | {'int': 1209} |
| `otherPssKb` | {'int': 1209} |
| `processes` | {'int': 1209} |
| `pssFallbackProcesses` | {'int': 1209} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
