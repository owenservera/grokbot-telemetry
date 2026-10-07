# sandbox_telemetry_parse — 2026-10-07 04:30:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=803389 lines=1766
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1761 |
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
| `chromeBrowserPssKb` | {'int': 1761} |
| `chromeGpuPssKb` | {'int': 1761} |
| `chromeOtherPssKb` | {'int': 1761} |
| `chromeProcesses` | {'int': 1761} |
| `chromeProfiles` | {'int': 1761} |
| `chromeRendererMaxPssKb` | {'int': 1761} |
| `chromeRendererPssKb` | {'int': 1761} |
| `chromeRenderers` | {'int': 1761} |
| `chromeTabs` | {'int': 1761} |
| `chromeTabsProbedProfiles` | {'int': 1761} |
| `chromeUtilityPssKb` | {'int': 1761} |
| `desktopPssKb` | {'int': 1761} |
| `hostPssKb` | {'int': 1761} |
| `kind` | {'str': 1761} |
| `memAvailableKb` | {'int': 1761} |
| `memTotalKb` | {'int': 1761} |
| `otherPssKb` | {'int': 1761} |
| `processes` | {'int': 1761} |
| `pssFallbackProcesses` | {'int': 1761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
