# sandbox_telemetry_parse — 2026-10-07 04:45:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=810685 lines=1782
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1777 |
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
| `chromeBrowserPssKb` | {'int': 1777} |
| `chromeGpuPssKb` | {'int': 1777} |
| `chromeOtherPssKb` | {'int': 1777} |
| `chromeProcesses` | {'int': 1777} |
| `chromeProfiles` | {'int': 1777} |
| `chromeRendererMaxPssKb` | {'int': 1777} |
| `chromeRendererPssKb` | {'int': 1777} |
| `chromeRenderers` | {'int': 1777} |
| `chromeTabs` | {'int': 1777} |
| `chromeTabsProbedProfiles` | {'int': 1777} |
| `chromeUtilityPssKb` | {'int': 1777} |
| `desktopPssKb` | {'int': 1777} |
| `hostPssKb` | {'int': 1777} |
| `kind` | {'str': 1777} |
| `memAvailableKb` | {'int': 1777} |
| `memTotalKb` | {'int': 1777} |
| `otherPssKb` | {'int': 1777} |
| `processes` | {'int': 1777} |
| `pssFallbackProcesses` | {'int': 1777} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
