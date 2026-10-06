# sandbox_telemetry_parse — 2026-10-06 12:31:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=370922 lines=818
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 813 |
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
| `chromeBrowserPssKb` | {'int': 813} |
| `chromeGpuPssKb` | {'int': 813} |
| `chromeOtherPssKb` | {'int': 813} |
| `chromeProcesses` | {'int': 813} |
| `chromeProfiles` | {'int': 813} |
| `chromeRendererMaxPssKb` | {'int': 813} |
| `chromeRendererPssKb` | {'int': 813} |
| `chromeRenderers` | {'int': 813} |
| `chromeTabs` | {'int': 813} |
| `chromeTabsProbedProfiles` | {'int': 813} |
| `chromeUtilityPssKb` | {'int': 813} |
| `desktopPssKb` | {'int': 813} |
| `hostPssKb` | {'int': 813} |
| `kind` | {'str': 813} |
| `memAvailableKb` | {'int': 813} |
| `memTotalKb` | {'int': 813} |
| `otherPssKb` | {'int': 813} |
| `processes` | {'int': 813} |
| `pssFallbackProcesses` | {'int': 813} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
