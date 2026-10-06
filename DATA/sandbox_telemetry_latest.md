# sandbox_telemetry_parse — 2026-10-06 08:33:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=262850 lines=581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 576 |
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
| `chromeBrowserPssKb` | {'int': 576} |
| `chromeGpuPssKb` | {'int': 576} |
| `chromeOtherPssKb` | {'int': 576} |
| `chromeProcesses` | {'int': 576} |
| `chromeProfiles` | {'int': 576} |
| `chromeRendererMaxPssKb` | {'int': 576} |
| `chromeRendererPssKb` | {'int': 576} |
| `chromeRenderers` | {'int': 576} |
| `chromeTabs` | {'int': 576} |
| `chromeTabsProbedProfiles` | {'int': 576} |
| `chromeUtilityPssKb` | {'int': 576} |
| `desktopPssKb` | {'int': 576} |
| `hostPssKb` | {'int': 576} |
| `kind` | {'str': 576} |
| `memAvailableKb` | {'int': 576} |
| `memTotalKb` | {'int': 576} |
| `otherPssKb` | {'int': 576} |
| `processes` | {'int': 576} |
| `pssFallbackProcesses` | {'int': 576} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
