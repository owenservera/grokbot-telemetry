# sandbox_telemetry_parse — 2026-10-20 15:50:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=2094685 lines=6136
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3686 |
| `chrome_profile_sample` | 2440 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
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
| `chromeBrowserPssKb` | {'int': 3686} |
| `chromeGpuPssKb` | {'int': 3686} |
| `chromeOtherPssKb` | {'int': 3686} |
| `chromeProcesses` | {'int': 3686} |
| `chromeProfiles` | {'int': 3686} |
| `chromeRendererMaxPssKb` | {'int': 3686} |
| `chromeRendererPssKb` | {'int': 3686} |
| `chromeRenderers` | {'int': 3686} |
| `chromeTabs` | {'int': 3686} |
| `chromeTabsProbedProfiles` | {'int': 3686} |
| `chromeUtilityPssKb` | {'int': 3686} |
| `desktopPssKb` | {'int': 3686} |
| `hostPssKb` | {'int': 3686} |
| `kind` | {'str': 3686} |
| `memAvailableKb` | {'int': 3686} |
| `memTotalKb` | {'int': 3686} |
| `otherPssKb` | {'int': 3686} |
| `processes` | {'int': 3686} |
| `pssFallbackProcesses` | {'int': 3686} |

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
| `cpuMillicores` | {'int': 2437} |
| `display` | {'int': 2440} |
| `kind` | {'str': 2440} |
| `processes` | {'int': 2440} |
| `pssKb` | {'int': 2440} |
| `rendererMaxPssKb` | {'int': 2440} |
| `renderers` | {'int': 2440} |
| `tabs` | {'int': 2439} |

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
