# sandbox_telemetry_parse — 2026-10-07 06:03:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=845797 lines=1859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1854 |
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
| `chromeBrowserPssKb` | {'int': 1854} |
| `chromeGpuPssKb` | {'int': 1854} |
| `chromeOtherPssKb` | {'int': 1854} |
| `chromeProcesses` | {'int': 1854} |
| `chromeProfiles` | {'int': 1854} |
| `chromeRendererMaxPssKb` | {'int': 1854} |
| `chromeRendererPssKb` | {'int': 1854} |
| `chromeRenderers` | {'int': 1854} |
| `chromeTabs` | {'int': 1854} |
| `chromeTabsProbedProfiles` | {'int': 1854} |
| `chromeUtilityPssKb` | {'int': 1854} |
| `desktopPssKb` | {'int': 1854} |
| `hostPssKb` | {'int': 1854} |
| `kind` | {'str': 1854} |
| `memAvailableKb` | {'int': 1854} |
| `memTotalKb` | {'int': 1854} |
| `otherPssKb` | {'int': 1854} |
| `processes` | {'int': 1854} |
| `pssFallbackProcesses` | {'int': 1854} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
