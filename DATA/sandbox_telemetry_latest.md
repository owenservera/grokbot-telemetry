# sandbox_telemetry_parse — 2026-10-15 08:39:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=765606 lines=1698
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1693 |
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
| `chromeBrowserPssKb` | {'int': 1693} |
| `chromeGpuPssKb` | {'int': 1693} |
| `chromeOtherPssKb` | {'int': 1693} |
| `chromeProcesses` | {'int': 1693} |
| `chromeProfiles` | {'int': 1693} |
| `chromeRendererMaxPssKb` | {'int': 1693} |
| `chromeRendererPssKb` | {'int': 1693} |
| `chromeRenderers` | {'int': 1693} |
| `chromeTabs` | {'int': 1693} |
| `chromeTabsProbedProfiles` | {'int': 1693} |
| `chromeUtilityPssKb` | {'int': 1693} |
| `desktopPssKb` | {'int': 1693} |
| `hostPssKb` | {'int': 1693} |
| `kind` | {'str': 1693} |
| `memAvailableKb` | {'int': 1693} |
| `memTotalKb` | {'int': 1693} |
| `otherPssKb` | {'int': 1693} |
| `processes` | {'int': 1693} |
| `pssFallbackProcesses` | {'int': 1693} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
