# sandbox_telemetry_parse — 2026-10-06 22:46:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=648170 lines=1426
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1421 |
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
| `chromeBrowserPssKb` | {'int': 1421} |
| `chromeGpuPssKb` | {'int': 1421} |
| `chromeOtherPssKb` | {'int': 1421} |
| `chromeProcesses` | {'int': 1421} |
| `chromeProfiles` | {'int': 1421} |
| `chromeRendererMaxPssKb` | {'int': 1421} |
| `chromeRendererPssKb` | {'int': 1421} |
| `chromeRenderers` | {'int': 1421} |
| `chromeTabs` | {'int': 1421} |
| `chromeTabsProbedProfiles` | {'int': 1421} |
| `chromeUtilityPssKb` | {'int': 1421} |
| `desktopPssKb` | {'int': 1421} |
| `hostPssKb` | {'int': 1421} |
| `kind` | {'str': 1421} |
| `memAvailableKb` | {'int': 1421} |
| `memTotalKb` | {'int': 1421} |
| `otherPssKb` | {'int': 1421} |
| `processes` | {'int': 1421} |
| `pssFallbackProcesses` | {'int': 1421} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
