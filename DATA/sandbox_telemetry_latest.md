# sandbox_telemetry_parse — 2026-10-06 11:50:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=351770 lines=776
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 771 |
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
| `chromeBrowserPssKb` | {'int': 771} |
| `chromeGpuPssKb` | {'int': 771} |
| `chromeOtherPssKb` | {'int': 771} |
| `chromeProcesses` | {'int': 771} |
| `chromeProfiles` | {'int': 771} |
| `chromeRendererMaxPssKb` | {'int': 771} |
| `chromeRendererPssKb` | {'int': 771} |
| `chromeRenderers` | {'int': 771} |
| `chromeTabs` | {'int': 771} |
| `chromeTabsProbedProfiles` | {'int': 771} |
| `chromeUtilityPssKb` | {'int': 771} |
| `desktopPssKb` | {'int': 771} |
| `hostPssKb` | {'int': 771} |
| `kind` | {'str': 771} |
| `memAvailableKb` | {'int': 771} |
| `memTotalKb` | {'int': 771} |
| `otherPssKb` | {'int': 771} |
| `processes` | {'int': 771} |
| `pssFallbackProcesses` | {'int': 771} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
