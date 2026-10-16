# sandbox_telemetry_parse — 2026-10-16 02:26:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1187622 lines=2661
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2607 |
| `chrome_profile_sample` | 45 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |
| `process_crash` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2607} |
| `chromeGpuPssKb` | {'int': 2607} |
| `chromeOtherPssKb` | {'int': 2607} |
| `chromeProcesses` | {'int': 2607} |
| `chromeProfiles` | {'int': 2607} |
| `chromeRendererMaxPssKb` | {'int': 2607} |
| `chromeRendererPssKb` | {'int': 2607} |
| `chromeRenderers` | {'int': 2607} |
| `chromeTabs` | {'int': 2607} |
| `chromeTabsProbedProfiles` | {'int': 2607} |
| `chromeUtilityPssKb` | {'int': 2607} |
| `desktopPssKb` | {'int': 2607} |
| `hostPssKb` | {'int': 2607} |
| `kind` | {'str': 2607} |
| `memAvailableKb` | {'int': 2607} |
| `memTotalKb` | {'int': 2607} |
| `otherPssKb` | {'int': 2607} |
| `processes` | {'int': 2607} |
| `pssFallbackProcesses` | {'int': 2607} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 44} |
| `display` | {'int': 45} |
| `kind` | {'str': 45} |
| `processes` | {'int': 45} |
| `pssKb` | {'int': 45} |
| `rendererMaxPssKb` | {'int': 45} |
| `renderers` | {'int': 45} |
| `tabs` | {'int': 45} |

### `process_crash`

| key | types |
|-----|-------|
| `binary` | {'str': 1} |
| `count` | {'int': 1} |
| `kind` | {'str': 1} |
| `signal` | {'str': 1} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
