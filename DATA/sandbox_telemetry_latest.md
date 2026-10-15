# sandbox_telemetry_parse — 2026-10-15 07:34:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=738938 lines=1639
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1634 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1634} |
| `chromeGpuPssKb` | {'int': 1634} |
| `chromeOtherPssKb` | {'int': 1634} |
| `chromeProcesses` | {'int': 1634} |
| `chromeProfiles` | {'int': 1634} |
| `chromeRendererMaxPssKb` | {'int': 1634} |
| `chromeRendererPssKb` | {'int': 1634} |
| `chromeRenderers` | {'int': 1634} |
| `chromeTabs` | {'int': 1634} |
| `chromeTabsProbedProfiles` | {'int': 1634} |
| `chromeUtilityPssKb` | {'int': 1634} |
| `desktopPssKb` | {'int': 1634} |
| `hostPssKb` | {'int': 1634} |
| `kind` | {'str': 1634} |
| `memAvailableKb` | {'int': 1634} |
| `memTotalKb` | {'int': 1634} |
| `otherPssKb` | {'int': 1634} |
| `processes` | {'int': 1634} |
| `pssFallbackProcesses` | {'int': 1634} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
