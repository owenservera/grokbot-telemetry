# sandbox_telemetry_parse — 2026-10-15 09:02:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=776002 lines=1721
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1716 |
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
| `chromeBrowserPssKb` | {'int': 1716} |
| `chromeGpuPssKb` | {'int': 1716} |
| `chromeOtherPssKb` | {'int': 1716} |
| `chromeProcesses` | {'int': 1716} |
| `chromeProfiles` | {'int': 1716} |
| `chromeRendererMaxPssKb` | {'int': 1716} |
| `chromeRendererPssKb` | {'int': 1716} |
| `chromeRenderers` | {'int': 1716} |
| `chromeTabs` | {'int': 1716} |
| `chromeTabsProbedProfiles` | {'int': 1716} |
| `chromeUtilityPssKb` | {'int': 1716} |
| `desktopPssKb` | {'int': 1716} |
| `hostPssKb` | {'int': 1716} |
| `kind` | {'str': 1716} |
| `memAvailableKb` | {'int': 1716} |
| `memTotalKb` | {'int': 1716} |
| `otherPssKb` | {'int': 1716} |
| `processes` | {'int': 1716} |
| `pssFallbackProcesses` | {'int': 1716} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
