# sandbox_telemetry_parse — 2026-10-06 11:39:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=347210 lines=766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 761 |
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
| `chromeBrowserPssKb` | {'int': 761} |
| `chromeGpuPssKb` | {'int': 761} |
| `chromeOtherPssKb` | {'int': 761} |
| `chromeProcesses` | {'int': 761} |
| `chromeProfiles` | {'int': 761} |
| `chromeRendererMaxPssKb` | {'int': 761} |
| `chromeRendererPssKb` | {'int': 761} |
| `chromeRenderers` | {'int': 761} |
| `chromeTabs` | {'int': 761} |
| `chromeTabsProbedProfiles` | {'int': 761} |
| `chromeUtilityPssKb` | {'int': 761} |
| `desktopPssKb` | {'int': 761} |
| `hostPssKb` | {'int': 761} |
| `kind` | {'str': 761} |
| `memAvailableKb` | {'int': 761} |
| `memTotalKb` | {'int': 761} |
| `otherPssKb` | {'int': 761} |
| `processes` | {'int': 761} |
| `pssFallbackProcesses` | {'int': 761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
