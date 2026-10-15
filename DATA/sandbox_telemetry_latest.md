# sandbox_telemetry_parse — 2026-10-15 09:52:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=796794 lines=1767
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1762 |
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
| `chromeBrowserPssKb` | {'int': 1762} |
| `chromeGpuPssKb` | {'int': 1762} |
| `chromeOtherPssKb` | {'int': 1762} |
| `chromeProcesses` | {'int': 1762} |
| `chromeProfiles` | {'int': 1762} |
| `chromeRendererMaxPssKb` | {'int': 1762} |
| `chromeRendererPssKb` | {'int': 1762} |
| `chromeRenderers` | {'int': 1762} |
| `chromeTabs` | {'int': 1762} |
| `chromeTabsProbedProfiles` | {'int': 1762} |
| `chromeUtilityPssKb` | {'int': 1762} |
| `desktopPssKb` | {'int': 1762} |
| `hostPssKb` | {'int': 1762} |
| `kind` | {'str': 1762} |
| `memAvailableKb` | {'int': 1762} |
| `memTotalKb` | {'int': 1762} |
| `otherPssKb` | {'int': 1762} |
| `processes` | {'int': 1762} |
| `pssFallbackProcesses` | {'int': 1762} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
