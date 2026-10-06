# sandbox_telemetry_parse — 2026-10-07 01:22:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=718925 lines=1581
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1576 |
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
| `chromeBrowserPssKb` | {'int': 1576} |
| `chromeGpuPssKb` | {'int': 1576} |
| `chromeOtherPssKb` | {'int': 1576} |
| `chromeProcesses` | {'int': 1576} |
| `chromeProfiles` | {'int': 1576} |
| `chromeRendererMaxPssKb` | {'int': 1576} |
| `chromeRendererPssKb` | {'int': 1576} |
| `chromeRenderers` | {'int': 1576} |
| `chromeTabs` | {'int': 1576} |
| `chromeTabsProbedProfiles` | {'int': 1576} |
| `chromeUtilityPssKb` | {'int': 1576} |
| `desktopPssKb` | {'int': 1576} |
| `hostPssKb` | {'int': 1576} |
| `kind` | {'str': 1576} |
| `memAvailableKb` | {'int': 1576} |
| `memTotalKb` | {'int': 1576} |
| `otherPssKb` | {'int': 1576} |
| `processes` | {'int': 1576} |
| `pssFallbackProcesses` | {'int': 1576} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
