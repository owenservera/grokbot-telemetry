# sandbox_telemetry_parse — 2026-10-07 05:06:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=819805 lines=1802
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1797 |
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
| `chromeBrowserPssKb` | {'int': 1797} |
| `chromeGpuPssKb` | {'int': 1797} |
| `chromeOtherPssKb` | {'int': 1797} |
| `chromeProcesses` | {'int': 1797} |
| `chromeProfiles` | {'int': 1797} |
| `chromeRendererMaxPssKb` | {'int': 1797} |
| `chromeRendererPssKb` | {'int': 1797} |
| `chromeRenderers` | {'int': 1797} |
| `chromeTabs` | {'int': 1797} |
| `chromeTabsProbedProfiles` | {'int': 1797} |
| `chromeUtilityPssKb` | {'int': 1797} |
| `desktopPssKb` | {'int': 1797} |
| `hostPssKb` | {'int': 1797} |
| `kind` | {'str': 1797} |
| `memAvailableKb` | {'int': 1797} |
| `memTotalKb` | {'int': 1797} |
| `otherPssKb` | {'int': 1797} |
| `processes` | {'int': 1797} |
| `pssFallbackProcesses` | {'int': 1797} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
