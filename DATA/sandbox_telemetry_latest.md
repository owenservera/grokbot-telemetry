# sandbox_telemetry_parse — 2026-10-27 05:08:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=336340 lines=747
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 742 |
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
| `chromeBrowserPssKb` | {'int': 742} |
| `chromeGpuPssKb` | {'int': 742} |
| `chromeOtherPssKb` | {'int': 742} |
| `chromeProcesses` | {'int': 742} |
| `chromeProfiles` | {'int': 742} |
| `chromeRendererMaxPssKb` | {'int': 742} |
| `chromeRendererPssKb` | {'int': 742} |
| `chromeRenderers` | {'int': 742} |
| `chromeTabs` | {'int': 742} |
| `chromeTabsProbedProfiles` | {'int': 742} |
| `chromeUtilityPssKb` | {'int': 742} |
| `desktopPssKb` | {'int': 742} |
| `hostPssKb` | {'int': 742} |
| `kind` | {'str': 742} |
| `memAvailableKb` | {'int': 742} |
| `memTotalKb` | {'int': 742} |
| `otherPssKb` | {'int': 742} |
| `processes` | {'int': 742} |
| `pssFallbackProcesses` | {'int': 742} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
