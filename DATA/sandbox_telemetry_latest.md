# sandbox_telemetry_parse — 2026-10-07 15:35:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1101613 lines=2420
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2415 |
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
| `chromeBrowserPssKb` | {'int': 2415} |
| `chromeGpuPssKb` | {'int': 2415} |
| `chromeOtherPssKb` | {'int': 2415} |
| `chromeProcesses` | {'int': 2415} |
| `chromeProfiles` | {'int': 2415} |
| `chromeRendererMaxPssKb` | {'int': 2415} |
| `chromeRendererPssKb` | {'int': 2415} |
| `chromeRenderers` | {'int': 2415} |
| `chromeTabs` | {'int': 2415} |
| `chromeTabsProbedProfiles` | {'int': 2415} |
| `chromeUtilityPssKb` | {'int': 2415} |
| `desktopPssKb` | {'int': 2415} |
| `hostPssKb` | {'int': 2415} |
| `kind` | {'str': 2415} |
| `memAvailableKb` | {'int': 2415} |
| `memTotalKb` | {'int': 2415} |
| `otherPssKb` | {'int': 2415} |
| `processes` | {'int': 2415} |
| `pssFallbackProcesses` | {'int': 2415} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
