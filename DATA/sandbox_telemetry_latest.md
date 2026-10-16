# sandbox_telemetry_parse — 2026-10-16 15:07:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=562957 lines=2104
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1390 |
| `memory_sample` | 705 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 705} |
| `chromeGpuPssKb` | {'int': 705} |
| `chromeOtherPssKb` | {'int': 705} |
| `chromeProcesses` | {'int': 705} |
| `chromeProfiles` | {'int': 705} |
| `chromeRendererMaxPssKb` | {'int': 705} |
| `chromeRendererPssKb` | {'int': 705} |
| `chromeRenderers` | {'int': 705} |
| `chromeTabs` | {'int': 705} |
| `chromeTabsProbedProfiles` | {'int': 705} |
| `chromeUtilityPssKb` | {'int': 705} |
| `desktopPssKb` | {'int': 705} |
| `hostPssKb` | {'int': 705} |
| `kind` | {'str': 705} |
| `memAvailableKb` | {'int': 705} |
| `memTotalKb` | {'int': 705} |
| `otherPssKb` | {'int': 705} |
| `processes` | {'int': 705} |
| `pssFallbackProcesses` | {'int': 705} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 1387} |
| `display` | {'int': 1390} |
| `kind` | {'str': 1390} |
| `processes` | {'int': 1390} |
| `pssKb` | {'int': 1390} |
| `rendererMaxPssKb` | {'int': 1390} |
| `renderers` | {'int': 1390} |
| `tabs` | {'int': 1389} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
