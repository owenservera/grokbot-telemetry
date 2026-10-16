# sandbox_telemetry_parse — 2026-10-16 08:51:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=296507 lines=1108
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 726 |
| `memory_sample` | 373 |
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
| `chromeBrowserPssKb` | {'int': 373} |
| `chromeGpuPssKb` | {'int': 373} |
| `chromeOtherPssKb` | {'int': 373} |
| `chromeProcesses` | {'int': 373} |
| `chromeProfiles` | {'int': 373} |
| `chromeRendererMaxPssKb` | {'int': 373} |
| `chromeRendererPssKb` | {'int': 373} |
| `chromeRenderers` | {'int': 373} |
| `chromeTabs` | {'int': 373} |
| `chromeTabsProbedProfiles` | {'int': 373} |
| `chromeUtilityPssKb` | {'int': 373} |
| `desktopPssKb` | {'int': 373} |
| `hostPssKb` | {'int': 373} |
| `kind` | {'str': 373} |
| `memAvailableKb` | {'int': 373} |
| `memTotalKb` | {'int': 373} |
| `otherPssKb` | {'int': 373} |
| `processes` | {'int': 373} |
| `pssFallbackProcesses` | {'int': 373} |

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
| `cpuMillicores` | {'int': 723} |
| `display` | {'int': 726} |
| `kind` | {'str': 726} |
| `processes` | {'int': 726} |
| `pssKb` | {'int': 726} |
| `rendererMaxPssKb` | {'int': 726} |
| `renderers` | {'int': 726} |
| `tabs` | {'int': 725} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
