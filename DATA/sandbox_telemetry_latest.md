# sandbox_telemetry_parse — 2026-10-07 04:04:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=791989 lines=1741
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1736 |
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
| `chromeBrowserPssKb` | {'int': 1736} |
| `chromeGpuPssKb` | {'int': 1736} |
| `chromeOtherPssKb` | {'int': 1736} |
| `chromeProcesses` | {'int': 1736} |
| `chromeProfiles` | {'int': 1736} |
| `chromeRendererMaxPssKb` | {'int': 1736} |
| `chromeRendererPssKb` | {'int': 1736} |
| `chromeRenderers` | {'int': 1736} |
| `chromeTabs` | {'int': 1736} |
| `chromeTabsProbedProfiles` | {'int': 1736} |
| `chromeUtilityPssKb` | {'int': 1736} |
| `desktopPssKb` | {'int': 1736} |
| `hostPssKb` | {'int': 1736} |
| `kind` | {'str': 1736} |
| `memAvailableKb` | {'int': 1736} |
| `memTotalKb` | {'int': 1736} |
| `otherPssKb` | {'int': 1736} |
| `processes` | {'int': 1736} |
| `pssFallbackProcesses` | {'int': 1736} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
