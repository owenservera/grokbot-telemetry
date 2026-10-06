# sandbox_telemetry_parse — 2026-10-06 07:15:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=227738 lines=504
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 499 |
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
| `chromeBrowserPssKb` | {'int': 499} |
| `chromeGpuPssKb` | {'int': 499} |
| `chromeOtherPssKb` | {'int': 499} |
| `chromeProcesses` | {'int': 499} |
| `chromeProfiles` | {'int': 499} |
| `chromeRendererMaxPssKb` | {'int': 499} |
| `chromeRendererPssKb` | {'int': 499} |
| `chromeRenderers` | {'int': 499} |
| `chromeTabs` | {'int': 499} |
| `chromeTabsProbedProfiles` | {'int': 499} |
| `chromeUtilityPssKb` | {'int': 499} |
| `desktopPssKb` | {'int': 499} |
| `hostPssKb` | {'int': 499} |
| `kind` | {'str': 499} |
| `memAvailableKb` | {'int': 499} |
| `memTotalKb` | {'int': 499} |
| `otherPssKb` | {'int': 499} |
| `processes` | {'int': 499} |
| `pssFallbackProcesses` | {'int': 499} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
