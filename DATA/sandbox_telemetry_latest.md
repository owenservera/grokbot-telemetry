# sandbox_telemetry_parse — 2026-10-06 13:36:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=398738 lines=879
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 874 |
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
| `chromeBrowserPssKb` | {'int': 874} |
| `chromeGpuPssKb` | {'int': 874} |
| `chromeOtherPssKb` | {'int': 874} |
| `chromeProcesses` | {'int': 874} |
| `chromeProfiles` | {'int': 874} |
| `chromeRendererMaxPssKb` | {'int': 874} |
| `chromeRendererPssKb` | {'int': 874} |
| `chromeRenderers` | {'int': 874} |
| `chromeTabs` | {'int': 874} |
| `chromeTabsProbedProfiles` | {'int': 874} |
| `chromeUtilityPssKb` | {'int': 874} |
| `desktopPssKb` | {'int': 874} |
| `hostPssKb` | {'int': 874} |
| `kind` | {'str': 874} |
| `memAvailableKb` | {'int': 874} |
| `memTotalKb` | {'int': 874} |
| `otherPssKb` | {'int': 874} |
| `processes` | {'int': 874} |
| `pssFallbackProcesses` | {'int': 874} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
