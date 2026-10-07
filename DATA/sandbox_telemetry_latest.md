# sandbox_telemetry_parse — 2026-10-07 05:21:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=827101 lines=1818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1813 |
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
| `chromeBrowserPssKb` | {'int': 1813} |
| `chromeGpuPssKb` | {'int': 1813} |
| `chromeOtherPssKb` | {'int': 1813} |
| `chromeProcesses` | {'int': 1813} |
| `chromeProfiles` | {'int': 1813} |
| `chromeRendererMaxPssKb` | {'int': 1813} |
| `chromeRendererPssKb` | {'int': 1813} |
| `chromeRenderers` | {'int': 1813} |
| `chromeTabs` | {'int': 1813} |
| `chromeTabsProbedProfiles` | {'int': 1813} |
| `chromeUtilityPssKb` | {'int': 1813} |
| `desktopPssKb` | {'int': 1813} |
| `hostPssKb` | {'int': 1813} |
| `kind` | {'str': 1813} |
| `memAvailableKb` | {'int': 1813} |
| `memTotalKb` | {'int': 1813} |
| `otherPssKb` | {'int': 1813} |
| `processes` | {'int': 1813} |
| `pssFallbackProcesses` | {'int': 1813} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
