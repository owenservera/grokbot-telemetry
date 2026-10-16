# sandbox_telemetry_parse — 2026-10-16 05:58:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=161710 lines=604
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 390 |
| `memory_sample` | 205 |
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
| `chromeBrowserPssKb` | {'int': 205} |
| `chromeGpuPssKb` | {'int': 205} |
| `chromeOtherPssKb` | {'int': 205} |
| `chromeProcesses` | {'int': 205} |
| `chromeProfiles` | {'int': 205} |
| `chromeRendererMaxPssKb` | {'int': 205} |
| `chromeRendererPssKb` | {'int': 205} |
| `chromeRenderers` | {'int': 205} |
| `chromeTabs` | {'int': 205} |
| `chromeTabsProbedProfiles` | {'int': 205} |
| `chromeUtilityPssKb` | {'int': 205} |
| `desktopPssKb` | {'int': 205} |
| `hostPssKb` | {'int': 205} |
| `kind` | {'str': 205} |
| `memAvailableKb` | {'int': 205} |
| `memTotalKb` | {'int': 205} |
| `otherPssKb` | {'int': 205} |
| `processes` | {'int': 205} |
| `pssFallbackProcesses` | {'int': 205} |

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
| `cpuMillicores` | {'int': 387} |
| `display` | {'int': 390} |
| `kind` | {'str': 390} |
| `processes` | {'int': 390} |
| `pssKb` | {'int': 390} |
| `rendererMaxPssKb` | {'int': 390} |
| `renderers` | {'int': 390} |
| `tabs` | {'int': 389} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
